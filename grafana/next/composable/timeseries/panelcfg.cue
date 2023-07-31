package kind

import (
	"github.com/grafana/kindsys"
	"github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & {
	name:            "TimeSeries" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				// TODO: this should fulfill the "panel options" Go interface defined by dashboards
				// ie: `PanelCfgOptionsInterface`
				Options: common.OptionsWithTimezones & {
						legend:  common.VizLegendOptions
						tooltip: common.VizTooltipOptions
				}            @cuetsy(kind="interface")
				// TODO: this should fulfill the "panel field config" Go interface defined by dashboards
				// ie: `PanelCfgFieldConfigInterface`
				FieldConfig: common.GraphFieldConfig @cuetsy(kind="interface")
			}
		}]
		name: "TimeSeries" + "PanelCfg"
		lenses: []
	}
}
