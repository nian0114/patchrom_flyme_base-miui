.class Lcom/android/settings_ex/users/UserSettings$4;
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
    .line 500
    iput-object p1, p0, Lcom/android/settings_ex/users/UserSettings$4;->auC:Lcom/android/settings_ex/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings$4;->auC:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings_ex/users/UserSettings;->e(Lcom/android/settings_ex/users/UserSettings;)V

    .line 503
    return-void
.end method