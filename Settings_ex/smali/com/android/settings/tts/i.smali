.class Lcom/android/settings_ex/tts/i;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic asQ:Lcom/android/settings_ex/tts/e;

.field final synthetic asS:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/tts/e;Landroid/widget/CompoundButton;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/settings_ex/tts/i;->asQ:Lcom/android/settings_ex/tts/e;

    iput-object p2, p0, Lcom/android/settings_ex/tts/i;->asS:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/tts/i;->asQ:Lcom/android/settings_ex/tts/e;

    iget-object v1, p0, Lcom/android/settings_ex/tts/i;->asS:Landroid/widget/CompoundButton;

    invoke-static {v0, v1}, Lcom/android/settings_ex/tts/e;->a(Lcom/android/settings_ex/tts/e;Landroid/widget/Checkable;)V

    .line 239
    return-void
.end method
