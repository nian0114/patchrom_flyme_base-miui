.class Lcom/android/settings_ex/wifi/be;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# instance fields
.field final synthetic aFr:Lcom/android/settings_ex/wifi/bd;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/bd;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings_ex/wifi/be;->aFr:Lcom/android/settings_ex/wifi/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/wifi/be;->aFr:Lcom/android/settings_ex/wifi/bd;

    invoke-static {v0, p1}, Lcom/android/settings_ex/wifi/bd;->a(Lcom/android/settings_ex/wifi/bd;Landroid/nfc/Tag;)V

    .line 158
    return-void
.end method
