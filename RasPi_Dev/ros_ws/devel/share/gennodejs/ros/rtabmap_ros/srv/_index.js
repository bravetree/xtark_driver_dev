
"use strict";

let GetMap = require('./GetMap.js')
let ResetPose = require('./ResetPose.js')
let GetPlan = require('./GetPlan.js')
let SetLabel = require('./SetLabel.js')
let PublishMap = require('./PublishMap.js')
let ListLabels = require('./ListLabels.js')
let SetGoal = require('./SetGoal.js')

module.exports = {
  GetMap: GetMap,
  ResetPose: ResetPose,
  GetPlan: GetPlan,
  SetLabel: SetLabel,
  PublishMap: PublishMap,
  ListLabels: ListLabels,
  SetGoal: SetGoal,
};
