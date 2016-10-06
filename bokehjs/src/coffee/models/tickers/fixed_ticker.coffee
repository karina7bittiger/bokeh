import * as _ from "underscore"

import * as ContinuousTicker from "./continuous_ticker"
import * as p from "../../core/properties"

class FixedTicker extends ContinuousTicker.Model
  type: 'FixedTicker'

  @define {
      ticks: [ p.Array, [] ]
    }

  get_ticks_no_defaults: (data_low, data_high, desired_n_ticks) ->
    return {
      major: @ticks
      minor: []
    }

module.exports =
  Model: FixedTicker
