##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class Notifications < Domain
      class V1 < Version
        class ServiceContext < InstanceContext
          class NotificationList < ListResource
            ##
            # Initialize the NotificationList
            # @param [Version] version Version that contains the resource
            # @param [String] service_sid The service_sid
            
            # @return [NotificationList] NotificationList
            def initialize(version, service_sid: nil)
              super(version)
              
              # Path Solution
              @solution = {
                  service_sid: service_sid
              }
              @uri = "/Services/#{@solution[:service_sid]}/Notifications"
            end
            
            ##
            # Retrieve a single page of NotificationInstance records from the API.
            # Request is executed immediately.
            # @param [String] identity The identity
            # @param [String] tag The tag
            # @param [String] body The body
            # @param [notification.Priority] priority The priority
            # @param [String] ttl The ttl
            # @param [String] title The title
            # @param [String] sound The sound
            # @param [String] action The action
            # @param [String] data The data
            # @param [String] apn The apn
            # @param [String] gcm The gcm
            # @param [String] sms The sms
            # @param [String] facebook_messenger The facebook_messenger
            
            # @return [NotificationInstance] Newly created NotificationInstance
            def create(identity: nil, tag: nil, body: nil, priority: nil, ttl: nil, title: nil, sound: nil, action: nil, data: nil, apn: nil, gcm: nil, sms: nil, facebook_messenger: nil)
              data = {
                  'Identity' => identity,
                  'Tag' => tag,
                  'Body' => body,
                  'Priority' => priority,
                  'Ttl' => ttl,
                  'Title' => title,
                  'Sound' => sound,
                  'Action' => action,
                  'Data' => data,
                  'Apn' => apn,
                  'Gcm' => gcm,
                  'Sms' => sms,
                  'FacebookMessenger' => facebook_messenger,
              }
              
              payload = @version.create(
                  'POST',
                  @uri,
                  data: data
              )
              
              return NotificationInstance.new(
                  @version,
                  payload,
                  service_sid: @solution['service_sid'],
              )
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Notifications.V1.NotificationList>'
            end
          end
        
          class NotificationPage < Page
            ##
            # Initialize the NotificationPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @param [String] service_sid The service_sid
            
            # @return [NotificationPage] NotificationPage
            def initialize(version, response, solution)
              super(version, response)
              
              # Path Solution
              @solution = solution
            end
            
            ##
            # Build an instance of NotificationInstance
            # @param [Hash] payload Payload response from the API
            
            # @return [NotificationInstance] NotificationInstance
            def get_instance(payload)
              return NotificationInstance.new(
                  @version,
                  payload,
                  service_sid: @solution['service_sid'],
              )
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Notifications.V1.NotificationPage>'
            end
          end
        
          class NotificationInstance < InstanceResource
            ##
            # Initialize the NotificationInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] service_sid The service_sid
            
            # @return [NotificationInstance] NotificationInstance
            def initialize(version, payload, service_sid: nil)
              super(version)
              
              # Marshaled Properties
              @properties = {
                  'sid' => payload['sid'],
                  'account_sid' => payload['account_sid'],
                  'service_sid' => payload['service_sid'],
                  'date_created' => Twilio.deserialize_iso8601(payload['date_created']),
                  'identities' => payload['identities'],
                  'tags' => payload['tags'],
                  'priority' => payload['priority'],
                  'ttl' => payload['ttl'].to_i,
                  'title' => payload['title'],
                  'body' => payload['body'],
                  'sound' => payload['sound'],
                  'action' => payload['action'],
                  'data' => payload['data'],
                  'apn' => payload['apn'],
                  'gcm' => payload['gcm'],
                  'facebook_messenger' => payload['facebook_messenger'],
              }
            end
            
            def sid
              @properties['sid']
            end
            
            def account_sid
              @properties['account_sid']
            end
            
            def service_sid
              @properties['service_sid']
            end
            
            def date_created
              @properties['date_created']
            end
            
            def identities
              @properties['identities']
            end
            
            def tags
              @properties['tags']
            end
            
            def priority
              @properties['priority']
            end
            
            def ttl
              @properties['ttl']
            end
            
            def title
              @properties['title']
            end
            
            def body
              @properties['body']
            end
            
            def sound
              @properties['sound']
            end
            
            def action
              @properties['action']
            end
            
            def data
              @properties['data']
            end
            
            def apn
              @properties['apn']
            end
            
            def gcm
              @properties['gcm']
            end
            
            def facebook_messenger
              @properties['facebook_messenger']
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              "<Twilio.Notifications.V1.NotificationInstance>"
            end
          end
        end
      end
    end
  end
end