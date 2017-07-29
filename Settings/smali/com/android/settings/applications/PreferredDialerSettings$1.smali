.class Lcom/android/settings_ex/applications/PreferredDialerSettings$1;
.super Ljava/lang/Object;
.source "PreferredDialerSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic KM:Lcom/android/settings_ex/applications/PreferredDialerSettings$DialerApplicationInfo;

.field final synthetic KN:Lcom/android/settings_ex/applications/PreferredDialerSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/PreferredDialerSettings;Lcom/android/settings_ex/applications/PreferredDialerSettings$DialerApplicationInfo;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings_ex/applications/PreferredDialerSettings$1;->KN:Lcom/android/settings_ex/applications/PreferredDialerSettings;

    iput-object p2, p0, Lcom/android/settings_ex/applications/PreferredDialerSettings$1;->KM:Lcom/android/settings_ex/applications/PreferredDialerSettings$DialerApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/applications/PreferredDialerSettings$1;->KN:Lcom/android/settings_ex/applications/PreferredDialerSettings;

    iget-object v1, p0, Lcom/android/settings_ex/applications/PreferredDialerSettings$1;->KM:Lcom/android/settings_ex/applications/PreferredDialerSettings$DialerApplicationInfo;

    iget-object v1, v1, Lcom/android/settings_ex/applications/PreferredDialerSettings$DialerApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/PreferredDialerSettings;->a(Lcom/android/settings_ex/applications/PreferredDialerSettings;Ljava/lang/String;)V

    .line 146
    return-void
.end method
