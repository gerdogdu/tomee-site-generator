<%include "header.gsp"%>
	<%include "menu.gsp"%>

    <div id="main-block" class="container main-block">
        <div class="row title">
          <div class="col-md-12">
            <div class='page-header'>
              <%if (content.containsKey('tomeepdf')) {%>
              <div class='btn-toolbar pull-right' style="z-index: 2000;">
                <div class='btn-group'>
                    <a class="btn" href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>${content.uri.replace('html', 'pdf')}"><i class="fa fa-file-pdf-o"></i> Download as PDF</a>
                </div>
              </div>
              <% } %>
              <h1>${content.title}</h1>
            </div>
          </div>
        </div>
        <div class="row">
            <%if (content.body) {%>
            <div class="col-md-12">
                ${content.body}
            </div>
            <% } %>
        </div>
    </div>
<%include "footer.gsp"%>
