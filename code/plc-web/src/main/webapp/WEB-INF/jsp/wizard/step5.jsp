<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<div id="video_form">
    <div class="well">
        <iframe id="ctrvideo"
            src="http://player.vimeo.com/video/37704392?api=1&player_id=ctrvideo&title=0&byline=0&portrait=0" width="500" height="375" frameborder="0"></iframe>
    </div>

    <div class="alert-message" id="video_instructions">You must finish watching the video to advance in the
        consent process.</div>
    <s:form cssClass="form-stacked" namespace="/www/wizard" action="step6" method="post">
        <fieldset>
            <div class="actions">
                <input type="submit" class="btn primary disabled" disabled="disabled" value="Next">
            </div>
        </fieldset>
    </s:form>
    <script type="text/javascript">
        $(document).ready(function() {
            disableNavigationUntilVideoFinishes();
            markProgress('#watchVideoStep');
        });
    </script>
</div>