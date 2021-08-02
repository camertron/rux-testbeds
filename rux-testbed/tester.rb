# Rails.autoloaders.main.send(:set_autoload, Object, :OrderFormComponent, '/Users/cdutro/workspace/rux-testbed/app/components/order_form_component.rux')
# Object.send(:remove_const, :OrderFormComponent)
# autoload :OrderFormComponent, '/Users/cdutro/workspace/rux-testbed/app/components/order_form_component.rux'

puts OrderFormComponent.new(title: 'Foo', thing: 'Thang').inspect
