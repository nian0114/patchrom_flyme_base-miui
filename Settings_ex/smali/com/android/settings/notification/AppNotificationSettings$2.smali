.class Lcom/android/settings_ex/notification/AppNotificationSettings$2;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic aiK:Lcom/android/settings_ex/notification/AppNotificationSettings;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/AppNotificationSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$2;->aiK:Lcom/android/settings_ex/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$2;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 177
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$2;->aiK:Lcom/android/settings_ex/notification/AppNotificationSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/AppNotificationSettings;->b(Lcom/android/settings_ex/notification/AppNotificationSettings;)Lcom/android/settings_ex/notification/NotificationBackend;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$2;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$2;->aiK:Lcom/android/settings_ex/notification/AppNotificationSettings;

    invoke-static {v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->a(Lcom/android/settings_ex/notification/AppNotificationSettings;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings_ex/notification/NotificationBackend;->b(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method