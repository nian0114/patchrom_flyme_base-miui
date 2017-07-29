.class Lcom/android/settings_ex/ef;
.super Ljava/lang/Object;
.source "MiuiConfirmCommonPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiConfirmCommonPassword;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/ef;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 82
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/ef;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->setResult(I)V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/ef;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-virtual {v0}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->finish()V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/ef;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->a(Lcom/android/settings_ex/MiuiConfirmCommonPassword;)V

    goto :goto_0
.end method
