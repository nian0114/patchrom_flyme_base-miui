.class public Lcom/android/settings_ex/wifi/F;
.super Landroid/os/Binder;
.source "MiuiWifiService.java"


# instance fields
.field final synthetic aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wifi/MiuiWifiService;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings_ex/wifi/F;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public xA()Lcom/android/settings_ex/wifi/MiuiWifiService;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/wifi/F;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    return-object v0
.end method
