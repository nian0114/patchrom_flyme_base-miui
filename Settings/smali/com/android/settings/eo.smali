.class Lcom/android/settings_ex/eo;
.super Lcom/android/settings_ex/ah;
.source "MiuiDisplaySettings.java"


# instance fields
.field final synthetic qH:Lcom/android/settings_ex/MiuiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiDisplaySettings;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings_ex/eo;->qH:Lcom/android/settings_ex/MiuiDisplaySettings;

    invoke-direct {p0}, Lcom/android/settings_ex/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/eo;->qH:Lcom/android/settings_ex/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiDisplaySettings;->b(Lcom/android/settings_ex/MiuiDisplaySettings;)Lmiui/preference/ValuePreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 151
    return-void
.end method
