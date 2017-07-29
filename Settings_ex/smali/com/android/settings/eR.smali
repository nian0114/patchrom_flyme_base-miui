.class Lcom/android/settings_ex/eR;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/settings_ex/eR;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/eR;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->i(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method
