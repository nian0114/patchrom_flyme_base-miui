.class Lcom/android/settings_ex/wifi/aa;
.super Ljava/lang/Object;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aCf:Landroid/widget/EditText;

.field final synthetic aCg:Lcom/android/settings_ex/wifi/WifiAPITest;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiAPITest;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings_ex/wifi/aa;->aCg:Lcom/android/settings_ex/wifi/WifiAPITest;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/aa;->aCf:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aa;->aCf:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/aa;->aCg:Lcom/android/settings_ex/wifi/WifiAPITest;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/settings_ex/wifi/WifiAPITest;->a(Lcom/android/settings_ex/wifi/WifiAPITest;I)I

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aa;->aCg:Lcom/android/settings_ex/wifi/WifiAPITest;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiAPITest;->b(Lcom/android/settings_ex/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/aa;->aCg:Lcom/android/settings_ex/wifi/WifiAPITest;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiAPITest;->a(Lcom/android/settings_ex/wifi/WifiAPITest;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method
