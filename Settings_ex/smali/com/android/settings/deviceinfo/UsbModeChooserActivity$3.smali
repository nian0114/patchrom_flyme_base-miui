.class Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$3;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic XQ:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$3;->XQ:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$3;->XQ:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->finish()V

    .line 105
    return-void
.end method