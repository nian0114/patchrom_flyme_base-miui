.class Lcom/android/settings_ex/applications/MiuiSmsDefaultDialog$6;
.super Ljava/lang/Object;
.source "MiuiSmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic KA:Lcom/android/settings_ex/applications/MiuiSmsDefaultDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/MiuiSmsDefaultDialog;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings_ex/applications/MiuiSmsDefaultDialog$6;->KA:Lcom/android/settings_ex/applications/MiuiSmsDefaultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/applications/MiuiSmsDefaultDialog$6;->KA:Lcom/android/settings_ex/applications/MiuiSmsDefaultDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/MiuiSmsDefaultDialog;->finish()V

    .line 109
    return-void
.end method
