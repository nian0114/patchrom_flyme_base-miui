.class Lcom/android/settings_ex/notification/AppNotificationSettings$5;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic aiK:Lcom/android/settings_ex/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/AppNotificationSettings;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->aiK:Lcom/android/settings_ex/notification/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->aiK:Lcom/android/settings_ex/notification/AppNotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->d(Lcom/android/settings_ex/notification/AppNotificationSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->aiK:Lcom/android/settings_ex/notification/AppNotificationSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/AppNotificationSettings;->c(Lcom/android/settings_ex/notification/AppNotificationSettings;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->aji:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 204
    const/4 v0, 0x1

    return v0
.end method
