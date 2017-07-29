.class public Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;
.super Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;
.source "AppStateUsageBridge.java"


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 60
    iget-object v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->Gp:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;->Gp:Landroid/content/pm/PackageInfo;

    .line 61
    iget v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->Gs:I

    iput v0, p0, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;->Gs:I

    .line 62
    iget-boolean v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->Gr:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;->Gr:Z

    .line 63
    iget-boolean v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->Gq:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;->Gq:Z

    .line 64
    return-void
.end method
