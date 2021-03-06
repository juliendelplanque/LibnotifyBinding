# LibnotifyBinding

This project is a fork of [the squeak version](http://www.squeaksource.com/libnotify.html) modified to use the Pharo unified FFI API.
It also has been updated to match the specification of [libnotify 0.7.6](https://developer.gnome.org/libnotify/) (the original implementation for Squeak was not up-to-date with this specification).

This project uses the Unified FFI API from [Pharo](http://pharo.org/) 5 images.

## Install
Install LibnotifyBinding from the [catalog](http://catalog.pharo.org/) browser or by running this script:
~~~
Metacello new
    repository: 'github://JulienDelplanque/LibnotifyBinding/repository';
    baseline: 'LibnotifyBinding';
    load
~~~

### Use this project as dependency
Simply add this code snippet to your baseline:
~~~
spec baseline: 'LibnotifyBinding' with: [
    spec repository: 'github://juliendelplanque/LibnotifyBinding/repository' ].
~~~

## Dependency(ies)
To use this package you need to install [libnotify 0.7.6](https://developer.gnome.org/libnotify/) on your system.

## Simple example
~~~
notification := LBNotification
                    summary: 'libnotify for Pharo works'
                    message: 'As you see this message and the image has not crashed. libnotify for Pharo obviously works'.
notification show.
~~~

## High level interface
### LBLibnotifyUser trait
This trait defines the message `#libnotify` on both instance and class side which returns the unique instance of LBLibnotify.
It is used by **LBNotification** and **LBServerInfo**.

### LBServerInfo
#### Instance side
| Message | Purpose |
|:--------|:--------|
| #refresh | Refresh server info. |
| #serverName | Return the server name. |
| #specificationVersion | Return the specification version. |
| #vendorName | Return the vendor name. |
| #version | Return the server version. |

#### Class side
| Message | Purpose |
|:--------|:--------|
| #uniqueInstance | Return the unique instance of LBServerInfo |

### LBNotification
#### Instance side
| Message | Purpose |
|:--------|:--------|
| #appName: | Set the application name for the notification. **If not used, 'Pharo' is the application name.** |
| #beCritical | Set the notification urgency to 'critical'. |
| #beLow | Set the notification urgency to 'low'. |
| #beNormal | Set the notification urgency to 'normal'. |
| #category: | Set the notification category. |
| #clearHints | Remove the hints previously set for the notification. |
| #close | Close the notification. |
| #defaultTimeout | Set the notification timeout to the default time. |
| #neverTimeout | Set the notification to never timeout. |
| #setHint:to: | Set the hint with the key given to the specified value. **The object given as value must implement #asGVariant (some object are already implementing it, see the list below)** |
| #show | Show the notification. |
| #timeout: | Set the timeout of the notification. **The parameter must be a Duration.** |
| #updateSummary:message: | Update the notification. **It does not display the update automatically, #refresh must be send after the update.** |
| #updateSummary:message:icon: | Update the notification. **It does not display the update automatically, #refresh must be send after the update.** |

#### Class side
| Message | Purpose |
|:--------|:--------|
| #serverInfo | Returns the unique instance of LBServerInfo refreshed. |
| #summary:message: | Returns a new instance with the specified summary and message. |
| #summary:message:icon: | Returns a new instance with the specified summary, message and icon. **The icon can be a FileReference or a String.** |

## Objects implementing #asGVariant

- Boolean
- Character
- Float
- Integer
- String

### GVariant supported type, Pharo object associated and message for conversion
| GVariant type | Pharo object | #message                      |
|:--------------|:-------------|:------------------------------|
| gboolean      | Boolean      | #asGVariant                   |
| gchar         | Character    | #asGVariant                   |
| gdouble       | Float        | #asGVariant                   |
| gint16        | Integer      | #asGVariantInt16              |
| gint32        | Integer      | #asGVariantInt32              |
| gint64        | Integer      | #asGVariantInt64, #asGVariant |
| guint16       | Integer      | #asGVariantUInt16             |
| guint32       | Integer      | #asGVariantUInt32             |
| guint64       | Integer      | #asGVariantUInt64             |
| gstring       | String       | #asGVariant                   |

## Low level functions binding
Here is a list of the libnotify functions and their equivalent in LBLibnotification object.
Those marked as *deprecated* will not be implemented since they are deprecated in libnotify specification.

### notify

| libnotify              | LBLibnotification |
|:-----------------------|:------------------|
| notify_init            | #notifyInit: |
| notify_uninit          | #notifyUninit |
| notify_is_initted      | #notifyIsInitted |
| notify_get_app_name    | #notifyGetAppName |
| notify_set_app_name    | #notifySetAppName: |
| notify_get_server_caps | *Not supported yet* |
| notify_get_server_info | #notifyGetServerInfoName:vendor:version:specVersion: |

### NotifyNotification

| libnotify                                 | LBLibnotify |
|:------------------------------------------|:---------------------------------------------|
| notify_notification_new                   | #notificationNewSummary:message:icon:attach: |
| notify_notification_update                | #notificationUpdate:summary:message:icon: |
| notify_notification_show                  | #notificationShow:error: |
| notify_notification_set_app_name          | #notificationSet:appName: |
| notify_notification_set_timeout           | #notificationSet:timeout: |
| notify_notification_set_category          | #notificationSet:category: |
| notify_notification_set_urgency           | #notificationSet:urgency: |
| notify_notification_set_icon_from_pixbuf  | *Deprecated* |
| notify_notification_set_image_from_pixbuf | *Not supported yet* |
| notify_notification_set_hint              | #notificationSet:hint:to: |
| notify_notification_set_hint_int32        | *Deprecated* |
| notify_notification_set_hint_uint32       | *Deprecated* |
| notify_notification_set_hint_double       | *Deprecated* |
| notify_notification_set_hint_string       | *Deprecated* |
| notify_notification_set_hint_byte         | *Deprecated* |
| notify_notification_set_hint_byte_array   | *Deprecated* |
| notify_notification_clear_hints           | #notificationClearHints: |
| notify_notification_add_action            | *Not supported yet* |
| notify_notification_clear_actions         | *Not supported yet* |
| notify_notification_close                 | #notificationClose:error: |
| notify_notification_get_closed_reason     | *Not supported yet* |

## Some useful links for development
- [Libnotify documentation](https://developer.gnome.org/libnotify/)
- [Notification specification](https://developer.gnome.org/notification-spec)
- [Icon naming specification](https://specifications.freedesktop.org/icon-naming-spec/icon-naming-spec-latest.html)
- [Sound naming specification](http://0pointer.de/public/sound-naming-spec.html)
