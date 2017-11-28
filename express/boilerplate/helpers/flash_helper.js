const FlashHelper = {};


FlashHelper.bootstrapAlertClassFor = function(key) {
  return {
    "error": "danger",
    "alert": "danger",
    "notice": "info"
  }[key] || key;
};


module.exports = FlashHelper;

