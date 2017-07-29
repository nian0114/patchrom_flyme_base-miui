.class Lcom/android/settings_ex/cz;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "DisplaySettings.java"


# instance fields
.field final synthetic lR:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/settings_ex/cz;->lR:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/settings_ex/cz;->lR:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->b(Lcom/android/settings_ex/DisplaySettings;)V

    .line 676
    return-void
.end method
