.class Lcom/android/settings_ex/hc;
.super Ljava/lang/Object;
.source "ScreenPinningSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic yx:Lcom/android/settings_ex/ScreenPinningSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ScreenPinningSettings;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings_ex/hc;->yx:Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/hc;->yx:Lcom/android/settings_ex/ScreenPinningSettings;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/ScreenPinningSettings;->a(Lcom/android/settings_ex/ScreenPinningSettings;Z)Z

    move-result v0

    return v0
.end method
