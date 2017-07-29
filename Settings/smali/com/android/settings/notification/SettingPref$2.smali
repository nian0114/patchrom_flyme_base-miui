.class Lcom/android/settings_ex/notification/SettingPref$2;
.super Ljava/lang/Object;
.source "SettingPref.java"

# interfaces
.implements Lcom/android/settings_ex/cO;


# instance fields
.field final synthetic aku:Lcom/android/settings_ex/notification/SettingPref;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/SettingPref;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings_ex/notification/SettingPref$2;->aku:Lcom/android/settings_ex/notification/SettingPref;

    iput-object p2, p0, Lcom/android/settings_ex/notification/SettingPref$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;)Z
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/notification/SettingPref$2;->aku:Lcom/android/settings_ex/notification/SettingPref;

    iget-object v1, p0, Lcom/android/settings_ex/notification/SettingPref$2;->val$context:Landroid/content/Context;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/notification/SettingPref;->r(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method
