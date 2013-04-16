maria.ElementView.subclass = (function() {

    var original = maria.ElementView.subclass;

    return function(namespace, name, options) {
        options = options || {};
        var template = options.template;
        var templateName = options.templateName || name.replace(/(View|)$/, 'Template');
        var properties = options.properties || (options.properties = {});
        if (!Object.prototype.hasOwnProperty.call(properties, 'getTemplate')) {
            if (template) {
                properties.getTemplate = function() {
                    return template;
                };
            }
            else if (templateName) {
                properties.getTemplate = function() {
                    // Look for the template in the document.
                    return document.getElementById(templateName).innerHTML;
                };
            }
        }
        original.call(this, namespace, name, options);
    };

}());
