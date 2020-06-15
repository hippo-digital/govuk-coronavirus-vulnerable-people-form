# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rspec-rails/all/rspec-rails.rbi
#
# rspec-rails-4.0.1

module RSpec
end
module RSpec::Rails
  def self.add_test_type_configurations(config); end
  def self.disable_testunit_autorun; end
  def self.initialize_configuration(config); end
end
module RSpec::Rails::FeatureCheck
  def has_action_cable_testing?; end
  def has_action_mailbox?; end
  def has_action_mailer?; end
  def has_action_mailer_parameterized?; end
  def has_action_mailer_preview?; end
  def has_action_mailer_unified_delivery?; end
  def has_active_job?; end
  def has_active_record?; end
  def has_active_record_migration?; end
  def self.has_action_cable_testing?; end
  def self.has_action_mailbox?; end
  def self.has_action_mailer?; end
  def self.has_action_mailer_parameterized?; end
  def self.has_action_mailer_preview?; end
  def self.has_action_mailer_unified_delivery?; end
  def self.has_active_job?; end
  def self.has_active_record?; end
  def self.has_active_record_migration?; end
  def self.type_metatag(type); end
  def type_metatag(type); end
end
class RSpec::Rails::Railtie < Rails::Railtie
  def config_default_preview_path(options); end
  def config_preview_path?(options); end
  def setup_preview_path(app); end
  def supports_action_mailer_previews?(config); end
end
class RSpec::Rails::AssertionDelegator < Module
  def initialize(*assertion_modules); end
end
module RSpec::Rails::MinitestLifecycleAdapter
  def after_setup; end
  def after_teardown; end
  def before_setup; end
  def before_teardown; end
  extend ActiveSupport::Concern
end
module RSpec::Rails::MinitestCounters
  def assertions; end
  def assertions=(arg0); end
end
module RSpec::Rails::SetupAndTeardownAdapter
  def initialize(*args); end
  def method_name; end
  extend ActiveSupport::Concern
end
module RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  def setup(*methods, &block); end
  def teardown(*methods, &block); end
end
module RSpec::Rails::MinitestAssertionAdapter
  def assertion_delegator; end
  extend ActiveSupport::Concern
end
module RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  def assertion_method_names; end
  def define_assertion_delegators; end
end
class RSpec::Rails::MinitestAssertionAdapter::AssertionDelegator
  include Minitest::Assertions
  include RSpec::Rails::MinitestCounters
end
module RSpec::Rails::ViewRendering
  def controller; end
  def controller=(arg0); end
  def render_views?; end
  extend ActiveSupport::Concern
end
module RSpec::Rails::ViewRendering::ClassMethods
  def render_views(true_or_false = nil); end
  def render_views?; end
end
class RSpec::Rails::ViewRendering::EmptyTemplateResolver
  def self.build(path); end
  def self.nullify_template_rendering(templates); end
  def self.template_format(template); end
end
class RSpec::Rails::ViewRendering::EmptyTemplateResolver::ResolverDecorator
  def initialize(resolver); end
  def method_missing(name, *args, &block); end
  def nullify_templates(collection); end
end
class RSpec::Rails::ViewRendering::EmptyTemplateResolver::FileSystemResolver < ActionView::FileSystemResolver
  def find_templates(*args); end
end
class RSpec::Rails::ViewRendering::EmptyTemplateHandler
  def self.call(_template, _source = nil); end
end
module RSpec::Rails::ViewRendering::EmptyTemplates
  def _path_decorator(*paths); end
  def append_view_path(new_path); end
  def prepend_view_path(new_path); end
end
module RSpec::Rails::Matchers
  def be_a_new(model_class); end
  def be_new_record; end
  def be_valid(*args); end
  def broadcast_to(target = nil); end
  def check_action_cable_adapter; end
  def check_active_job_adapter; end
  def enqueue_email(mailer_class = nil, mail_method_name = nil); end
  def enqueue_job(job = nil); end
  def enqueue_mail(mailer_class = nil, mail_method_name = nil); end
  def have_been_enqueued; end
  def have_been_performed; end
  def have_broadcasted_to(target = nil); end
  def have_enqueued_email(mailer_class = nil, mail_method_name = nil); end
  def have_enqueued_job(job = nil); end
  def have_enqueued_mail(mailer_class = nil, mail_method_name = nil); end
  def have_http_status(target); end
  def have_performed_job(job = nil); end
  def perform_job(job = nil); end
  def receive_inbound_email(message); end
end
class RSpec::Rails::Matchers::BaseMatcher
  def actual; end
  def actual_formatted; end
  def assert_ivars(*expected_ivars); end
  def description; end
  def diffable?; end
  def expected; end
  def expected_formatted; end
  def expects_call_stack_jump?; end
  def initialize(expected = nil); end
  def match_unless_raises(*exceptions); end
  def matcher_name; end
  def matcher_name=(arg0); end
  def matches?(actual); end
  def present_ivars; end
  def rescued_exception; end
  def self.matcher_name; end
  def self.underscore(camel_cased_word); end
  def supports_block_expectations?; end
  include RSpec::Matchers::Composable
  include RSpec::Rails::Matchers::BaseMatcher::DefaultFailureMessages
  include RSpec::Rails::Matchers::BaseMatcher::HashFormatting
end
module RSpec::Rails::Matchers::BaseMatcher::HashFormatting
  def improve_hash_formatting(inspect_string); end
  def self.improve_hash_formatting(inspect_string); end
end
module RSpec::Rails::Matchers::BaseMatcher::DefaultFailureMessages
  def failure_message; end
  def failure_message_when_negated; end
  def self.has_default_failure_messages?(matcher); end
end
module RSpec::Rails::Matchers::RenderTemplate
  def have_rendered(options, message = nil); end
  def render_template(options, message = nil); end
end
class RSpec::Rails::Matchers::RenderTemplate::RenderTemplateMatcher < RSpec::Rails::Matchers::BaseMatcher
  def check_redirect; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(scope, expected, message = nil); end
  def matches?(*arg0); end
end
module RSpec::Rails::Matchers::RedirectTo
  def redirect_to(target); end
end
class RSpec::Rails::Matchers::RedirectTo::RedirectTo < RSpec::Rails::Matchers::BaseMatcher
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(scope, expected); end
  def matches?(_); end
end
module RSpec::Rails::Matchers::RoutingMatchers
  def be_routable; end
  def route_to(*expected); end
  extend RSpec::Matchers::DSL
end
class RSpec::Rails::Matchers::RoutingMatchers::RouteToMatcher < RSpec::Rails::Matchers::BaseMatcher
  def description; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(scope, *expected); end
  def matches?(verb_to_path_map); end
end
class RSpec::Rails::Matchers::RoutingMatchers::BeRoutableMatcher < RSpec::Rails::Matchers::BaseMatcher
  def description; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(scope); end
  def matches?(path); end
end
module RSpec::Rails::Matchers::RoutingMatchers::RouteHelpers
  def delete(path); end
  def get(path); end
  def head(path); end
  def options(path); end
  def patch(path); end
  def post(path); end
  def put(path); end
end
class RSpec::Rails::Matchers::BeANewRecord < RSpec::Rails::Matchers::BaseMatcher
  def failure_message; end
  def failure_message_when_negated; end
  def matches?(actual); end
end
class RSpec::Rails::Matchers::BeANew < RSpec::Rails::Matchers::BaseMatcher
  def attributes; end
  def attributes_match?(actual); end
  def failure_message; end
  def initialize(expected); end
  def matches?(actual); end
  def unmatched_attributes; end
  def with(expected_attributes); end
end
class RSpec::Rails::Matchers::BeValid < RSpec::Matchers::BuiltIn::Be
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(*args); end
  def matches?(actual); end
end
module RSpec::Rails::Matchers::HaveHttpStatus
  def as_test_response(obj); end
  def invalid_response_type_message; end
  def self.as_test_response(obj); end
  def self.matcher_for_status(target); end
end
class RSpec::Rails::Matchers::HaveHttpStatus::NumericCode < RSpec::Rails::Matchers::BaseMatcher
  def description; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(code); end
  def matches?(response); end
  include RSpec::Rails::Matchers::HaveHttpStatus
end
class RSpec::Rails::Matchers::HaveHttpStatus::SymbolicStatus < RSpec::Rails::Matchers::BaseMatcher
  def actual_status; end
  def compute_status_from(code); end
  def description; end
  def expected_status; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(status); end
  def matches?(response); end
  def pp_actual; end
  def pp_expected; end
  def pp_status(status, code); end
  def set_expected_code!; end
  include RSpec::Rails::Matchers::HaveHttpStatus
end
class RSpec::Rails::Matchers::HaveHttpStatus::GenericStatus < RSpec::Rails::Matchers::BaseMatcher
  def check_expected_status(test_response, expected); end
  def description; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(type); end
  def matches?(response); end
  def self.valid_statuses; end
  def type_codes; end
  def type_message; end
  include RSpec::Rails::Matchers::HaveHttpStatus
end
module RSpec::Rails::Matchers::ActiveJob
end
class RSpec::Rails::Matchers::ActiveJob::Base < RSpec::Rails::Matchers::BaseMatcher
  def arguments_match?(job); end
  def at(time_or_date); end
  def at_least(count); end
  def at_match?(job); end
  def at_most(count); end
  def base_job_message(job); end
  def base_message; end
  def check(jobs); end
  def deserialize_arguments(job); end
  def exactly(count); end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize; end
  def job_match?(job); end
  def message_expectation_modifier; end
  def on_queue(queue); end
  def once; end
  def queue_adapter; end
  def queue_match?(job); end
  def serialize_and_deserialize_arguments(args); end
  def set_expected_number(relativity, count); end
  def supports_block_expectations?; end
  def thrice; end
  def times; end
  def twice; end
  def with(*args, &block); end
end
class RSpec::Rails::Matchers::ActiveJob::HaveEnqueuedJob < RSpec::Rails::Matchers::ActiveJob::Base
  def does_not_match?(proc); end
  def initialize(job); end
  def matches?(proc); end
end
class RSpec::Rails::Matchers::ActiveJob::HaveBeenEnqueued < RSpec::Rails::Matchers::ActiveJob::Base
  def does_not_match?(proc); end
  def matches?(job); end
end
class RSpec::Rails::Matchers::ActiveJob::HavePerformedJob < RSpec::Rails::Matchers::ActiveJob::Base
  def initialize(job); end
  def matches?(proc); end
end
class RSpec::Rails::Matchers::ActiveJob::HaveBeenPerformed < RSpec::Rails::Matchers::ActiveJob::Base
  def matches?(job); end
end
class RSpec::Rails::Matchers::HaveEnqueuedMail < RSpec::Rails::Matchers::ActiveJob::HaveEnqueuedJob
  def arguments_match?(job); end
  def base_mailer_args; end
  def base_message; end
  def check_active_job_adapter; end
  def description; end
  def expected_count_message; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(mailer_class, method_name); end
  def job_match?(job); end
  def legacy_mail?(job); end
  def mail_job_message(job); end
  def mailer_class_name; end
  def matches?(block); end
  def parameterized_mail?(job); end
  def unified_mail?(job); end
  def unmatching_mail_jobs; end
  def unmatching_mail_jobs_message; end
  def with(*args, &block); end
  def yield_mail_args(block); end
  include RSpec::Mocks::ArgumentMatchers
end
module RSpec::Rails::Matchers::ActionCable
end
class RSpec::Rails::Matchers::ActionCable::HaveBroadcastedTo < RSpec::Matchers::BuiltIn::BaseMatcher
  def at_least(count); end
  def at_most(count); end
  def base_message; end
  def check(messages); end
  def check_channel_presence; end
  def data_description(data); end
  def exactly(count); end
  def failure_message; end
  def failure_message_when_negated; end
  def from_channel(channel); end
  def initialize(target, channel:); end
  def matches?(proc); end
  def message_expectation_modifier; end
  def once; end
  def pubsub_adapter; end
  def set_expected_number(relativity, count); end
  def stream; end
  def supports_block_expectations?; end
  def thrice; end
  def times; end
  def twice; end
  def with(data = nil, &block); end
end
module RSpec::Rails::Matchers::ActionMailbox
end
class RSpec::Rails::Matchers::ActionMailbox::Base < RSpec::Rails::Matchers::BaseMatcher
  def create_inbound_email(message); end
end
class RSpec::Rails::Matchers::ActionMailbox::ReceiveInboundEmail < RSpec::Rails::Matchers::ActionMailbox::Base
  def describe_inbound_email; end
  def failure_message; end
  def failure_message_when_negated; end
  def inbound_email; end
  def initialize(message); end
  def mailbox; end
  def matches?(mailbox); end
  def receiver; end
end
module RSpec::Rails::FixtureSupport
  extend ActiveSupport::Concern
  include ActiveRecord::TestFixtures
  include RSpec::Rails::MinitestAssertionAdapter
  include RSpec::Rails::MinitestLifecycleAdapter
  include RSpec::Rails::SetupAndTeardownAdapter
end
module RSpec::Rails::FixtureSupport::Fixtures
  extend ActiveSupport::Concern
end
module RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
  def fixtures(*args); end
  def proxy_method_warning_if_called_in_before_context_scope(method_name); end
end
module RSpec::Rails::FileFixtureSupport
  extend ActiveSupport::Concern
  include ActiveSupport::Testing::FileFixtures
end
module RSpec::Rails::FixtureFileUploadSupport
  def fixture_file_upload(*args, &block); end
  def rails_fixture_file_wrapper; end
end
class RSpec::Rails::FixtureFileUploadSupport::RailsFixtureFileWrapper
  def self.fixture_path; end
  def self.fixture_path=(value); end
  def self.instance; end
  include ActionDispatch::TestProcess
end
module RSpec::Rails::RailsExampleGroup
  extend ActiveSupport::Concern
  include RSpec::Rails::FixtureSupport
  include RSpec::Rails::MinitestAssertionAdapter
  include RSpec::Rails::MinitestLifecycleAdapter
  include RSpec::Rails::SetupAndTeardownAdapter
end
module RSpec::Rails::ControllerAssertionDelegator
  def assert_generates(*args, &block); end
  def assert_recognizes(*args, &block); end
  def assert_routing(*args, &block); end
  def assertion_instance; end
  def build_assertion_instance; end
  def setup(*args, &block); end
  def with_routing(*args, &block); end
end
module RSpec::Rails::ControllerExampleGroup
  def bypass_rescue; end
  def controller; end
  def method_missing(method, *args, &block); end
  def route_available?(method); end
  def route_defined?(routes, method); end
  def routes; end
  def routes=(routes); end
  extend ActiveSupport::Concern
  include ActionController::TestCase::Behavior
  include RSpec::Rails::ControllerAssertionDelegator
  include RSpec::Rails::Matchers::RedirectTo
  include RSpec::Rails::Matchers::RenderTemplate
  include RSpec::Rails::Matchers::RoutingMatchers
  include RSpec::Rails::RailsExampleGroup
  include RSpec::Rails::ViewRendering
end
module RSpec::Rails::ControllerExampleGroup::ClassMethods
  def controller(base_class = nil, &body); end
  def controller_class; end
  def routes; end
end
module RSpec::Rails::ControllerExampleGroup::BypassRescue
  def rescue_with_handler(exception); end
end
module RSpec::Rails::RequestExampleGroup
  def app; end
  extend ActiveSupport::Concern
  include ActionController::TemplateAssertions
  include ActionDispatch::Assertions
  include ActionDispatch::Integration::Runner
  include ActionDispatch::IntegrationTest::Behavior
  include RSpec::Rails::Matchers::RedirectTo
  include RSpec::Rails::Matchers::RenderTemplate
  include RSpec::Rails::RailsExampleGroup
end
module RSpec::Rails::ViewAssigns
  def _assigns; end
  def _encapsulated_assigns; end
  def assign(key, value); end
  def view_assigns; end
end
module RSpec::Rails::HelperExampleGroup
  def _controller_path(example); end
  def helper; end
  extend ActiveSupport::Concern
  include ActionView::TestCase::Behavior
  include RSpec::Rails::RailsExampleGroup
  include RSpec::Rails::ViewAssigns
end
module RSpec::Rails::HelperExampleGroup::ClassMethods
  def determine_constant_from_test_name(_ignore); end
end
module RSpec::Rails::ViewSpecMethods
  def add_to(klass); end
  def remove_from(klass); end
  def self.add_to(klass); end
  def self.remove_from(klass); end
end
class RSpec::Rails::ViewPathBuilder
  def initialize(route_set); end
  def path_for(path_params); end
end
module RSpec::Rails::ViewExampleGroup
  extend ActiveSupport::Concern
  include ActionView::TestCase::Behavior
  include RSpec::Rails::Matchers::RenderTemplate
  include RSpec::Rails::RailsExampleGroup
  include RSpec::Rails::ViewAssigns
end
module RSpec::Rails::ViewExampleGroup::StubResolverCache
  def self.resolver_for(hash); end
end
module RSpec::Rails::ViewExampleGroup::ClassMethods
  def _default_helper; end
  def _default_helpers; end
end
module RSpec::Rails::ViewExampleGroup::ExampleMethods
  def _controller_path; end
  def _default_render_options; end
  def _include_controller_helpers; end
  def _inferred_action; end
  def _path_parts; end
  def params; end
  def render(options = nil, local_assigns = nil, &block); end
  def response; end
  def stub_template(hash); end
  def template; end
  def view; end
  extend ActiveSupport::Concern
end
module RSpec::Rails::MailerExampleGroup
  extend ActiveSupport::Concern
  include ActionMailer::TestCase::Behavior
  include RSpec::Rails::RailsExampleGroup
end
module RSpec::Rails::MailerExampleGroup::ClassMethods
  def mailer_class; end
end
module RSpec::Rails::RoutingAssertionDelegator
  def assert_generates(*args, &block); end
  def assert_recognizes(*args, &block); end
  def assert_routing(*args, &block); end
  def assertion_instance; end
  def build_assertion_instance; end
  def setup(*args, &block); end
  def with_routing(*args, &block); end
end
module RSpec::Rails::RoutingExampleGroup
  def method_missing(m, *args, &block); end
  def routes; end
  def routes=(routes); end
  extend ActiveSupport::Concern
  include RSpec::Rails::Matchers::RoutingMatchers
  include RSpec::Rails::Matchers::RoutingMatchers::RouteHelpers
  include RSpec::Rails::RailsExampleGroup
  include RSpec::Rails::RoutingAssertionDelegator
end
module RSpec::Rails::RoutingExampleGroup::ClassMethods
  def routes; end
end
module RSpec::Rails::ModelExampleGroup
  extend ActiveSupport::Concern
  include RSpec::Rails::RailsExampleGroup
end
module RSpec::Rails::JobExampleGroup
  extend ActiveSupport::Concern
  include RSpec::Rails::RailsExampleGroup
end
module RSpec::Rails::FeatureExampleGroup
  def visit(*arg0); end
  extend ActiveSupport::Concern
  include RSpec::Rails::RailsExampleGroup
end
module RSpec::Rails::SystemExampleGroup
  def app; end
  def method_name; end
  def passed?; end
  extend ActiveSupport::Concern
  include ActionController::TemplateAssertions
  include ActionDispatch::Assertions
  include ActionDispatch::Integration::Runner
  include RSpec::Rails::Matchers::RedirectTo
  include RSpec::Rails::Matchers::RenderTemplate
  include RSpec::Rails::RailsExampleGroup
end
module RSpec::Rails::SystemExampleGroup::BlowAwayTeardownHooks
  def after_teardown; end
  def before_teardown; end
end
class RSpec::Rails::Matchers::ActionCable::HaveStream < RSpec::Matchers::BuiltIn::BaseMatcher
  def base_message; end
  def does_not_match?(subscription); end
  def failure_message; end
  def failure_message_when_negated; end
  def match(subscription); end
  def matches?(subscription); end
  def no_expected?; end
end
module RSpec::Rails::ChannelExampleGroup
  def have_rejected_connection; end
  def have_stream_for(object); end
  def have_stream_from(stream); end
  def have_streams; end
  extend ActiveSupport::Concern
  include ActionCable::Channel::TestCase::Behavior
  include ActionCable::Connection::TestCase::Behavior
  include RSpec::Rails::RailsExampleGroup
end
module RSpec::Rails::ChannelExampleGroup::ClassMethods
  def channel_class; end
  def connection_class; end
end
module RSpec::Rails::MailboxExampleGroup
  def have_been_delivered; end
  def have_bounced; end
  def have_failed; end
  def process(message); end
  def self.create_inbound_email(arg); end
  extend ActionMailbox::TestHelper
  extend ActiveSupport::Concern
end
module RSpec::Rails::MailboxExampleGroup::ClassMethods
  def mailbox_class; end
end
class RSpec::ExampleGroups::CoronavirusFormMailer < RSpec::Core::ExampleGroup
  def _mailer_class; end
  def _mailer_class=(val); end
  def _mailer_class?; end
  def assert(*args, &block); end
  def assert_empty(*args, &block); end
  def assert_equal(*args, &block); end
  def assert_in_delta(*args, &block); end
  def assert_in_epsilon(*args, &block); end
  def assert_includes(*args, &block); end
  def assert_instance_of(*args, &block); end
  def assert_kind_of(*args, &block); end
  def assert_match(*args, &block); end
  def assert_nil(*args, &block); end
  def assert_operator(*args, &block); end
  def assert_output(*args, &block); end
  def assert_path_exists(*args, &block); end
  def assert_predicate(*args, &block); end
  def assert_raises(*args, &block); end
  def assert_respond_to(*args, &block); end
  def assert_same(*args, &block); end
  def assert_send(*args, &block); end
  def assert_silent(*args, &block); end
  def assert_throws(*args, &block); end
  def config; end
  def config=(val); end
  def config?; end
  def default_url_options; end
  def default_url_options=(val); end
  def default_url_options?; end
  def file_fixture_path; end
  def file_fixture_path?; end
  def fixture_class_names; end
  def fixture_class_names=(val); end
  def fixture_class_names?; end
  def fixture_path; end
  def fixture_path?; end
  def fixture_table_names; end
  def fixture_table_names=(val); end
  def fixture_table_names?; end
  def flunk(*args, &block); end
  def lock_threads; end
  def lock_threads=(val); end
  def lock_threads?; end
  def pre_loaded_fixtures; end
  def pre_loaded_fixtures=(val); end
  def pre_loaded_fixtures?; end
  def refute(*args, &block); end
  def refute_empty(*args, &block); end
  def refute_equal(*args, &block); end
  def refute_in_delta(*args, &block); end
  def refute_in_epsilon(*args, &block); end
  def refute_includes(*args, &block); end
  def refute_instance_of(*args, &block); end
  def refute_kind_of(*args, &block); end
  def refute_match(*args, &block); end
  def refute_nil(*args, &block); end
  def refute_operator(*args, &block); end
  def refute_path_exists(*args, &block); end
  def refute_predicate(*args, &block); end
  def refute_respond_to(*args, &block); end
  def refute_same(*args, &block); end
  def self._mailer_class; end
  def self._mailer_class=(val); end
  def self._mailer_class?; end
  def self._routes; end
  def self.config; end
  def self.config=(val); end
  def self.config?; end
  def self.default_url_options; end
  def self.default_url_options=(val); end
  def self.default_url_options?; end
  def self.file_fixture_path; end
  def self.file_fixture_path=(val); end
  def self.file_fixture_path?; end
  def self.fixture_class_names; end
  def self.fixture_class_names=(val); end
  def self.fixture_class_names?; end
  def self.fixture_path; end
  def self.fixture_path=(val); end
  def self.fixture_path?; end
  def self.fixture_table_names; end
  def self.fixture_table_names=(val); end
  def self.fixture_table_names?; end
  def self.lock_threads; end
  def self.lock_threads=(val); end
  def self.lock_threads?; end
  def self.pre_loaded_fixtures; end
  def self.pre_loaded_fixtures=(val); end
  def self.pre_loaded_fixtures?; end
  def self.use_instantiated_fixtures; end
  def self.use_instantiated_fixtures=(val); end
  def self.use_instantiated_fixtures?; end
  def self.use_transactional_tests; end
  def self.use_transactional_tests=(val); end
  def self.use_transactional_tests?; end
  def use_instantiated_fixtures; end
  def use_instantiated_fixtures=(val); end
  def use_instantiated_fixtures?; end
  def use_transactional_tests; end
  def use_transactional_tests=(val); end
  def use_transactional_tests?; end
  extend ActionMailer::TestCase::Behavior::ClassMethods
  extend ActiveRecord::TestFixtures::ClassMethods
  extend ActiveSupport::Testing::ConstantLookup::ClassMethods
  extend RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
  extend RSpec::Rails::MailerExampleGroup::ClassMethods
  extend RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  extend RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  include ActionDispatch::Routing::UrlFor
  include ActionMailer::TestCase::Behavior
  include ActiveRecord::TestFixtures
  include ActiveSupport::Testing::ConstantLookup
  include ActiveSupport::Testing::FileFixtures
  include Anonymous_Module_633
  include Capybara::RSpecMatchers
  include RSpec::Rails::FileFixtureSupport
  include RSpec::Rails::FixtureFileUploadSupport
  include RSpec::Rails::FixtureSupport
  include RSpec::Rails::FixtureSupport
  include RSpec::Rails::FixtureSupport::Fixtures
  include RSpec::Rails::MailerExampleGroup
  include RSpec::Rails::Matchers
  include RSpec::Rails::MinitestAssertionAdapter
  include RSpec::Rails::MinitestAssertionAdapter
  include RSpec::Rails::MinitestLifecycleAdapter
  include RSpec::Rails::MinitestLifecycleAdapter
  include RSpec::Rails::RailsExampleGroup
  include RSpec::Rails::SetupAndTeardownAdapter
  include RSpec::Rails::SetupAndTeardownAdapter
end
class RSpec::Rails::Configuration
end
module RSpec::Core::Configuration::Readers
  def file_fixture_path; end
  def fixture_path; end
  def global_fixtures; end
  def infer_base_class_for_anonymous_controllers; end
  def rendering_views; end
  def use_active_record; end
  def use_instantiated_fixtures; end
  def use_transactional_fixtures; end
end
class RSpec::ExampleGroups::UploadErrorPages < RSpec::Core::ExampleGroup
  def assert(*args, &block); end
  def assert_empty(*args, &block); end
  def assert_equal(*args, &block); end
  def assert_in_delta(*args, &block); end
  def assert_in_epsilon(*args, &block); end
  def assert_includes(*args, &block); end
  def assert_instance_of(*args, &block); end
  def assert_kind_of(*args, &block); end
  def assert_match(*args, &block); end
  def assert_nil(*args, &block); end
  def assert_operator(*args, &block); end
  def assert_output(*args, &block); end
  def assert_path_exists(*args, &block); end
  def assert_predicate(*args, &block); end
  def assert_raises(*args, &block); end
  def assert_respond_to(*args, &block); end
  def assert_same(*args, &block); end
  def assert_send(*args, &block); end
  def assert_silent(*args, &block); end
  def assert_throws(*args, &block); end
  def config; end
  def config=(val); end
  def config?; end
  def file_fixture_path; end
  def file_fixture_path?; end
  def fixture_class_names; end
  def fixture_class_names=(val); end
  def fixture_class_names?; end
  def fixture_path; end
  def fixture_path?; end
  def fixture_table_names; end
  def fixture_table_names=(val); end
  def fixture_table_names?; end
  def flunk(*args, &block); end
  def lock_threads; end
  def lock_threads=(val); end
  def lock_threads?; end
  def pre_loaded_fixtures; end
  def pre_loaded_fixtures=(val); end
  def pre_loaded_fixtures?; end
  def refute(*args, &block); end
  def refute_empty(*args, &block); end
  def refute_equal(*args, &block); end
  def refute_in_delta(*args, &block); end
  def refute_in_epsilon(*args, &block); end
  def refute_includes(*args, &block); end
  def refute_instance_of(*args, &block); end
  def refute_kind_of(*args, &block); end
  def refute_match(*args, &block); end
  def refute_nil(*args, &block); end
  def refute_operator(*args, &block); end
  def refute_path_exists(*args, &block); end
  def refute_predicate(*args, &block); end
  def refute_respond_to(*args, &block); end
  def refute_same(*args, &block); end
  def self.config; end
  def self.config=(val); end
  def self.config?; end
  def self.file_fixture_path; end
  def self.file_fixture_path=(val); end
  def self.file_fixture_path?; end
  def self.fixture_class_names; end
  def self.fixture_class_names=(val); end
  def self.fixture_class_names?; end
  def self.fixture_path; end
  def self.fixture_path=(val); end
  def self.fixture_path?; end
  def self.fixture_table_names; end
  def self.fixture_table_names=(val); end
  def self.fixture_table_names?; end
  def self.lock_threads; end
  def self.lock_threads=(val); end
  def self.lock_threads?; end
  def self.pre_loaded_fixtures; end
  def self.pre_loaded_fixtures=(val); end
  def self.pre_loaded_fixtures?; end
  def self.use_instantiated_fixtures; end
  def self.use_instantiated_fixtures=(val); end
  def self.use_instantiated_fixtures?; end
  def self.use_transactional_tests; end
  def self.use_transactional_tests=(val); end
  def self.use_transactional_tests?; end
  def use_instantiated_fixtures; end
  def use_instantiated_fixtures=(val); end
  def use_instantiated_fixtures?; end
  def use_transactional_tests; end
  def use_transactional_tests=(val); end
  def use_transactional_tests?; end
  extend ActiveRecord::TestFixtures::ClassMethods
  extend RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
  extend RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  extend RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  include ActiveRecord::TestFixtures
  include ActiveSupport::Testing::FileFixtures
  include RSpec::Rails::FileFixtureSupport
  include RSpec::Rails::FixtureFileUploadSupport
  include RSpec::Rails::FixtureSupport
  include RSpec::Rails::FixtureSupport::Fixtures
  include RSpec::Rails::Matchers
  include RSpec::Rails::MinitestAssertionAdapter
  include RSpec::Rails::MinitestLifecycleAdapter
  include RSpec::Rails::SetupAndTeardownAdapter
end
class RSpec::ExampleGroups::Start < RSpec::Core::ExampleGroup
  def assert(*args, &block); end
  def assert_empty(*args, &block); end
  def assert_equal(*args, &block); end
  def assert_in_delta(*args, &block); end
  def assert_in_epsilon(*args, &block); end
  def assert_includes(*args, &block); end
  def assert_instance_of(*args, &block); end
  def assert_kind_of(*args, &block); end
  def assert_match(*args, &block); end
  def assert_nil(*args, &block); end
  def assert_operator(*args, &block); end
  def assert_output(*args, &block); end
  def assert_path_exists(*args, &block); end
  def assert_predicate(*args, &block); end
  def assert_raises(*args, &block); end
  def assert_respond_to(*args, &block); end
  def assert_same(*args, &block); end
  def assert_send(*args, &block); end
  def assert_silent(*args, &block); end
  def assert_throws(*args, &block); end
  def config; end
  def config=(val); end
  def config?; end
  def file_fixture_path; end
  def file_fixture_path?; end
  def fixture_class_names; end
  def fixture_class_names=(val); end
  def fixture_class_names?; end
  def fixture_path; end
  def fixture_path?; end
  def fixture_table_names; end
  def fixture_table_names=(val); end
  def fixture_table_names?; end
  def flunk(*args, &block); end
  def lock_threads; end
  def lock_threads=(val); end
  def lock_threads?; end
  def pre_loaded_fixtures; end
  def pre_loaded_fixtures=(val); end
  def pre_loaded_fixtures?; end
  def refute(*args, &block); end
  def refute_empty(*args, &block); end
  def refute_equal(*args, &block); end
  def refute_in_delta(*args, &block); end
  def refute_in_epsilon(*args, &block); end
  def refute_includes(*args, &block); end
  def refute_instance_of(*args, &block); end
  def refute_kind_of(*args, &block); end
  def refute_match(*args, &block); end
  def refute_nil(*args, &block); end
  def refute_operator(*args, &block); end
  def refute_path_exists(*args, &block); end
  def refute_predicate(*args, &block); end
  def refute_respond_to(*args, &block); end
  def refute_same(*args, &block); end
  def self.config; end
  def self.config=(val); end
  def self.config?; end
  def self.file_fixture_path; end
  def self.file_fixture_path=(val); end
  def self.file_fixture_path?; end
  def self.fixture_class_names; end
  def self.fixture_class_names=(val); end
  def self.fixture_class_names?; end
  def self.fixture_path; end
  def self.fixture_path=(val); end
  def self.fixture_path?; end
  def self.fixture_table_names; end
  def self.fixture_table_names=(val); end
  def self.fixture_table_names?; end
  def self.lock_threads; end
  def self.lock_threads=(val); end
  def self.lock_threads?; end
  def self.pre_loaded_fixtures; end
  def self.pre_loaded_fixtures=(val); end
  def self.pre_loaded_fixtures?; end
  def self.use_instantiated_fixtures; end
  def self.use_instantiated_fixtures=(val); end
  def self.use_instantiated_fixtures?; end
  def self.use_transactional_tests; end
  def self.use_transactional_tests=(val); end
  def self.use_transactional_tests?; end
  def use_instantiated_fixtures; end
  def use_instantiated_fixtures=(val); end
  def use_instantiated_fixtures?; end
  def use_transactional_tests; end
  def use_transactional_tests=(val); end
  def use_transactional_tests?; end
  extend ActiveRecord::TestFixtures::ClassMethods
  extend RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
  extend RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  extend RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  include ActiveRecord::TestFixtures
  include ActiveSupport::Testing::FileFixtures
  include RSpec::Rails::FileFixtureSupport
  include RSpec::Rails::FixtureFileUploadSupport
  include RSpec::Rails::FixtureSupport
  include RSpec::Rails::FixtureSupport::Fixtures
  include RSpec::Rails::Matchers
  include RSpec::Rails::MinitestAssertionAdapter
  include RSpec::Rails::MinitestLifecycleAdapter
  include RSpec::Rails::SetupAndTeardownAdapter
end
module Anonymous_Module_633
  def _generate_paths_by_default; end
  def _routes; end
  def self._routes; end
  def self.full_url_for(options); end
  def self.optimize_routes_generation?; end
  def self.polymorphic_path(record_or_hash_or_array, options = nil); end
  def self.polymorphic_url(record_or_hash_or_array, options = nil); end
  def self.route_for(name, *args); end
  def self.url_for(options); end
  def self.url_options; end
  extend ActiveSupport::Concern
  extend Anonymous_Module_14
  extend Anonymous_Module_15
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_14
  include Anonymous_Module_15
end
class RSpec::Rails::ActiveRecordConfiguration
  def self.initialize_activerecord_configuration(config); end
end