.class Lcom/android/settings/fZ;
.super Ljava/lang/Object;
.source "OldmanModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic vA:Z

.field final synthetic vB:Lcom/android/settings/fY;


# direct methods
.method constructor <init>(Lcom/android/settings/fY;Z)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/fZ;->vB:Lcom/android/settings/fY;

    iput-boolean p2, p0, Lcom/android/settings/fZ;->vA:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fZ;->vB:Lcom/android/settings/fY;

    iget-object v0, v0, Lcom/android/settings/fY;->vz:Lcom/android/settings/OldmanModeSettings;

    invoke-static {v0}, Lcom/android/settings/OldmanModeSettings;->a(Lcom/android/settings/OldmanModeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/fZ;->vA:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/fZ;->vB:Lcom/android/settings/fY;

    iget-object v0, v0, Lcom/android/settings/fY;->vz:Lcom/android/settings/OldmanModeSettings;

    iget-boolean v1, p0, Lcom/android/settings/fZ;->vA:Z

    invoke-static {v0, v1}, Lcom/android/b/a;->s(Landroid/content/Context;Z)V

    goto :goto_0
.end method
