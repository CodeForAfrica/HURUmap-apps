import React from 'react';
import menuicon from '../../assets/images/icons/group-7.png';
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
      link="https://sourceafrica.net/"
    >
      <img src={menuicon} alt="Menu Icon" />
    </Content>
  );
}

export default DocumentsContent;
