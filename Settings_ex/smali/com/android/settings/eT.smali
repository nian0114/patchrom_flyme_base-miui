.class Lcom/android/settings_ex/eT;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic rT:Lcom/android/settings_ex/MiuiSecurityBluetoothSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiSecurityBluetoothSettingsFragment;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings_ex/eT;->rT:Lcom/android/settings_ex/MiuiSecurityBluetoothSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 113
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/eT;->rT:Lcom/android/settings_ex/MiuiSecurityBluetoothSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiSecurityBluetoothSettingsFragment;->a(Lcom/android/settings_ex/MiuiSecurityBluetoothSettingsFragment;)Lcom/android/settings_ex/aH;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/aH;->b(ILjava/lang/CharSequence;)Z

    .line 117
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 118
    return-void
.end method
