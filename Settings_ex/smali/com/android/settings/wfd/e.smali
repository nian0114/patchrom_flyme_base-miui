.class Lcom/android/settings_ex/wfd/e;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic awB:Lcom/android/settings_ex/wfd/c;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/c;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/settings_ex/wfd/e;->awB:Lcom/android/settings_ex/wfd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/settings_ex/wfd/e;->awB:Lcom/android/settings_ex/wfd/c;

    iget-object v0, v0, Lcom/android/settings_ex/wfd/c;->awA:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->a(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->resumeWifiDisplay()V

    .line 383
    return-void
.end method
