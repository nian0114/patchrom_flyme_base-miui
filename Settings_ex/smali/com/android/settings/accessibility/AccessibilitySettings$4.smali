.class Lcom/android/settings_ex/accessibility/AccessibilitySettings$4;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "AccessibilitySettings.java"


# instance fields
.field final synthetic CT:Lcom/android/settings_ex/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$4;->CT:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$4;->CT:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->e(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V

    .line 184
    return-void
.end method