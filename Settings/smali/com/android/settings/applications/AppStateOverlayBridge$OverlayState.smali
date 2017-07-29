.class public Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;
.super Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;
.source "AppStateOverlayBridge.java"


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 69
    iget-object v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->Gp:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;->Gp:Landroid/content/pm/PackageInfo;

    .line 70
    iget v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->Gs:I

    iput v0, p0, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;->Gs:I

    .line 71
    iget-boolean v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->Gr:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;->Gr:Z

    .line 72
    iget-boolean v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->Gq:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;->Gq:Z

    .line 73
    return-void
.end method
