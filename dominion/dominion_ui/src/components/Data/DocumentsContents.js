import React from 'react';

import Menu from '@material-ui/icons/Menu';

import Content from './Content';

function DocumentsContent() {
  return (
    <Content
      title="sourceAFRICA"
      contentCount="115,126"
      contentType="Documents"
      description="
            sourceAFRICA is Africa's premier repository for actionable
            documents.
      "
    >
      <Menu size="large" style={{ color: 'black' }} />
    </Content>
  );
}

export default DocumentsContent;
