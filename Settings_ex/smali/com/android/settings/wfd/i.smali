.class Lcom/android/settings_ex/wfd/i;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic awA:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/settings_ex/wfd/i;->awA:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/settings_ex/wfd/i;->awA:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->i(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I

    move-result v0

    .line 626
    iget-object v1, p0, Lcom/android/settings_ex/wfd/i;->awA:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->d(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)I

    .line 627
    iget-object v1, p0, Lcom/android/settings_ex/wfd/i;->awA:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-static {v1, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->e(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 628
    return-void
.end method