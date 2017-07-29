.class Lcom/android/settings_ex/users/EditUserInfoController$1;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic atI:Lcom/android/settings_ex/users/EditUserInfoController;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/EditUserInfoController;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings_ex/users/EditUserInfoController$1;->atI:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserInfoController$1;->atI:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings_ex/users/EditUserInfoController;->clear()V

    .line 178
    return-void
.end method
