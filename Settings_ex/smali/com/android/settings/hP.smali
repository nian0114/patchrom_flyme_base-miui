.class Lcom/android/settings_ex/hP;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic AM:Lcom/android/settings_ex/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SoundSettings;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/settings_ex/hP;->AM:Lcom/android/settings_ex/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/hP;->AM:Lcom/android/settings_ex/SoundSettings;

    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->a(Lcom/android/settings_ex/SoundSettings;)Lcom/android/settings_ex/DefaultRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/hP;->AM:Lcom/android/settings_ex/SoundSettings;

    iget-object v1, p0, Lcom/android/settings_ex/hP;->AM:Lcom/android/settings_ex/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->a(Lcom/android/settings_ex/SoundSettings;)Lcom/android/settings_ex/DefaultRingtonePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/DefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/SoundSettings;->a(Landroid/net/Uri;I)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/hP;->AM:Lcom/android/settings_ex/SoundSettings;

    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->b(Lcom/android/settings_ex/SoundSettings;)Lcom/android/settings_ex/DefaultRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/settings_ex/hP;->AM:Lcom/android/settings_ex/SoundSettings;

    iget-object v1, p0, Lcom/android/settings_ex/hP;->AM:Lcom/android/settings_ex/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->b(Lcom/android/settings_ex/SoundSettings;)Lcom/android/settings_ex/DefaultRingtonePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/DefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/SoundSettings;->a(Landroid/net/Uri;I)V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/hP;->AM:Lcom/android/settings_ex/SoundSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SoundSettings;->ga()V

    .line 304
    return-void
.end method
