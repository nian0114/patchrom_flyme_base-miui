.class Lcom/android/settings_ex/users/UserSettings$7;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic auC:Lcom/android/settings_ex/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/settings_ex/users/UserSettings$7;->auC:Lcom/android/settings_ex/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings$7;->auC:Lcom/android/settings_ex/users/UserSettings;

    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$7;->auC:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->f(Lcom/android/settings_ex/users/UserSettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/users/UserSettings;->d(Lcom/android/settings_ex/users/UserSettings;I)V

    .line 561
    return-void
.end method
