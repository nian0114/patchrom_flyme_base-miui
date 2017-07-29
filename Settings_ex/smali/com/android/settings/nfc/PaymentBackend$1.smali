.class Lcom/android/settings_ex/nfc/PaymentBackend$1;
.super Landroid/os/Handler;
.source "PaymentBackend.java"


# instance fields
.field final synthetic aiy:Lcom/android/settings_ex/nfc/PaymentBackend;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/PaymentBackend;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings_ex/nfc/PaymentBackend$1;->aiy:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentBackend$1;->aiy:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->refresh()V

    .line 191
    return-void
.end method
