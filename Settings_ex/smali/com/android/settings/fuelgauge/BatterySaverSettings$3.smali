.class Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$3;
.super Ljava/lang/Object;
.source "BatterySaverSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aeW:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$3;->aeW:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$3$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$3$1;-><init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$3;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method