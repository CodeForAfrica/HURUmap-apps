from collections import OrderedDict

from django.conf import settings
from wazimap.data.utils import get_session, get_stat_data, group_remainder, \
    current_context, dataset_context

# ensure tables are loaded
import hurumap_zm.tables  # noqa

SECTIONS = settings.HURUMAP.get('topics', {})

PROFILE_SECTIONS = (
    'demographics',
)

EMPLOYMENT_RECODES = OrderedDict([
    ('seeking work / no work available', 'Seeking work'),
    ('employed', 'Employed'),
    ('economically inactive', 'Not economically active'),
    ('employment unclassified', 'Unspecified')])

WATER_SOURCE_RECODES = OrderedDict([
    ('piped', 'Piped'),
    ('piped into dwelling', 'Piped'),
    ('stream', 'Stream'),
    ('spring/well/borehole', 'Spring, well or borehole'),
    ('lake', 'Lake, pond or dam'),
    ('pond/dam', 'Lake, pond or dam'),
    ('jabia/rain/harvested', 'Rain/jabia'),
    ('water vendor', 'Vendor'),
    ('other', 'Other'),
])


def get_census_profile(geo, profile_name, request):
    geo.version = str(geo.version)
    session = get_session()
    year = current_context().get('year')
    try:
        data = {}
        sections = []
        selected_sections = []

        for cat in SECTIONS:
            sections.extend(SECTIONS[cat]['profiles'])

        for section in sections:
            section = section.lower().replace(' ', '_')
            function_name = 'get_%s_profile' % section
            if function_name in globals():
                func = globals()[function_name]
                data[section] = func(geo, session)

        # tweaks to make the data nicer
        # show X largest groups on their own and group the rest as 'Other'
        if 'households' in sections:
            group_remainder(data['households']['roofing_material_distribution'], 5)
            group_remainder(data['households']['wall_material_distribution'], 5)

        data['all_sections'] = SECTIONS
        data['primary_release_year'] = year
        if (selected_sections == []): selected_sections = sections
        data['raw_selected_sections'] = selected_sections
        data['selected_sections'] = [x.replace(' ','_').lower() for x in selected_sections]
        return data

    finally:
        session.close()


def get_demographics_profile(geo, session):
    year = current_context().get('year')

    with dataset_context(year=year):
        # gender
        gender_dist_data, total_pop = get_stat_data(
            'gender', geo, session,
            table_fields=['gender', 'age group'])

        # age group
        age_group_dist_data, _ = get_stat_data(
            'age group', geo, session,
            table_fields=['gender', 'age group'])
        total_under_15 = age_group_dist_data['0-14 Years']['numerators']['this']

        # rural or urban
        rural_dist_data, _ = get_stat_data(
            ['rural or urban','gender'], geo, session,
            table_fields=['gender', 'rural or urban'])

    final_data = {
        'gender_ratio': gender_dist_data,
        'age_group_distribution': age_group_dist_data,
        'under_15': {
            'name': 'Under 15 years',
            'values': {'this': total_under_15}
        },
        'rural_distribution': rural_dist_data,
        'total_population': {
            "name": "People",
            "values": {"this": total_pop}
        }}

    return final_data

