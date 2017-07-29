.class public Lcom/android/settings_ex/nfc/NfcForegroundPreference;
.super Lcom/android/settings_ex/DropDownPreference;
.source "NfcForegroundPreference.java"

# interfaces
.implements Lcom/android/settings_ex/cO;
.implements Lcom/android/settings_ex/nfc/PaymentBackend$Callback;


# instance fields
.field private final aim:Lcom/android/settings_ex/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/nfc/PaymentBackend;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DropDownPreference;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->aim:Lcom/android/settings_ex/nfc/PaymentBackend;

    .line 29
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->aim:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/nfc/PaymentBackend;->a(Lcom/android/settings_ex/nfc/PaymentBackend$Callback;)V

    .line 30
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->a(Lcom/android/settings_ex/cO;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->refresh()V

    .line 32
    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;)Z
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->aim:Lcom/android/settings_ex/nfc/PaymentBackend;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nfc/PaymentBackend;->aV(Z)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public rV()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->refresh()V

    .line 37
    return-void
.end method

.method refresh()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->aim:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->sa()Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->aim:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->sc()Z

    move-result v0

    .line 42
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->setPersistent(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0994

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->dJ()V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0996

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0995

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    if-eqz v0, :cond_0

    .line 50
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->o(Ljava/lang/Object;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->o(Ljava/lang/Object;)V

    goto :goto_0
.end method
