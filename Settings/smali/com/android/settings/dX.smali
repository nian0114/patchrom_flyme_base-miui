.class Lcom/android/settings_ex/dX;
.super Ljava/lang/Object;
.source "MiuiApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic pY:Lcom/android/settings_ex/MiuiApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiApnEditor;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings_ex/dX;->pY:Lcom/android/settings_ex/MiuiApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/dX;->pY:Lcom/android/settings_ex/MiuiApnEditor;

    invoke-virtual {v0}, Lcom/android/settings_ex/MiuiApnEditor;->finish()V

    .line 61
    return-void
.end method
