- dashboard: new_dashboard
  title: New Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: New Dashboard
    name: New Dashboard
    model: cloud_dev_day
    explore: cymbal_coffee_data
    type: looker_line
    fields: [cymbal_coffee_data.total_sales, cymbal_coffee_data.transaction_month]
    fill_fields: [cymbal_coffee_data.transaction_month]
    filters: {}
    sorts: [cymbal_coffee_data.transaction_month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Transaction Date: cymbal_coffee_data.transaction_date
    row: 0
    col: 0
    width: 24
    height: 12
  - title: Milk Sales
    name: Milk Sales
    model: cloud_dev_day
    explore: cymbal_coffee_data
    type: looker_column
    fields: [cymbal_coffee_data.milk_option, cymbal_coffee_data.total_sales]
    filters: {}
    sorts: [cymbal_coffee_data.total_sales desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Transaction Date: cymbal_coffee_data.transaction_date
    row: 12
    col: 0
    width: 9
    height: 7
  filters:
  - name: Transaction Date
    title: Transaction Date
    type: field_filter
    default_value: after 2019/04/01
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
    model: cloud_dev_day
    explore: cymbal_coffee_data
    listens_to_filters: []
    field: cymbal_coffee_data.transaction_date
