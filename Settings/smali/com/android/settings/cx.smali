.class Lcom/android/settings_ex/cx;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic lR:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/settings_ex/cx;->lR:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/settings_ex/cx;->lR:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->a(Lcom/android/settings_ex/DisplaySettings;)Lcom/android/settings_ex/WarnedListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/WarnedListPreference;->click()V

    .line 452
    return-void
.end method
