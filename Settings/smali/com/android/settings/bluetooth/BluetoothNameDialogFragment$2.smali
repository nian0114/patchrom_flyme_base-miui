.class Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$2;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic QH:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$2;->QH:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$2;->QH:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->QE:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$2;->QH:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    invoke-static {v1, v0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->a(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V

    .line 105
    return-void
.end method
