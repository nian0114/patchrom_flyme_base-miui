.class Lcom/android/settings_ex/users/UserDetailsSettings$3;
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
    .line 184
    iput-object p1, p0, Lcom/android/settings_ex/users/UserDetailsSettings$3;->aum:Lcom/android/settings_ex/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/users/UserDetailsSettings$3;->aum:Lcom/android/settings_ex/users/UserDetailsSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/UserDetailsSettings;->bj(Z)V

    .line 187
    return-void
.end method