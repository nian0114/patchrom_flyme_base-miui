.class Lcom/android/settings_ex/users/UserDetailsSettings$1;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aum:Lcom/android/settings_ex/users/UserDetailsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/UserDetailsSettings;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings_ex/users/UserDetailsSettings$1;->aum:Lcom/android/settings_ex/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/users/UserDetailsSettings$1;->aum:Lcom/android/settings_ex/users/UserDetailsSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/users/UserDetailsSettings;->removeUser()V

    .line 173
    return-void
.end method
