.class Lcom/android/settings_ex/tts/m;
.super Ljava/lang/Object;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field final synthetic atb:Lcom/android/settings_ex/tts/l;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/tts/l;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ex/tts/m;->atb:Lcom/android/settings_ex/tts/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/tts/m;->atb:Lcom/android/settings_ex/tts/l;

    invoke-virtual {v0}, Lcom/android/settings_ex/tts/l;->hW()V

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/tts/m;->atb:Lcom/android/settings_ex/tts/l;

    invoke-virtual {v0}, Lcom/android/settings_ex/tts/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/tts/n;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/tts/n;-><init>(Lcom/android/settings_ex/tts/m;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
