.class Lcom/android/settings_ex/hX;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic AW:Lcom/android/settings_ex/TetherSettings;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherSettings;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/settings_ex/hX;->AW:Lcom/android/settings_ex/TetherSettings;

    iput-object p2, p0, Lcom/android/settings_ex/hX;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/settings_ex/hX;->AW:Lcom/android/settings_ex/TetherSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/TetherSettings;->a(Lcom/android/settings_ex/TetherSettings;I)V

    .line 585
    iget-object v0, p0, Lcom/android/settings_ex/hX;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 586
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 587
    return-void
.end method