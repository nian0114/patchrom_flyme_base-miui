.class Lcom/android/settings_ex/fuelgauge/PowerModeSettings$2;
.super Ljava/lang/Object;
.source "PowerModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic afl:Lcom/android/settings_ex/fuelgauge/PowerModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fuelgauge/PowerModeSettings;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/PowerModeSettings$2;->afl:Lcom/android/settings_ex/fuelgauge/PowerModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerModeSettings$2;->afl:Lcom/android/settings_ex/fuelgauge/PowerModeSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/PowerModeSettings;->finish()V

    .line 68
    return-void
.end method
