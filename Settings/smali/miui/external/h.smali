.class Lmiui/external/h;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field final synthetic bsi:Lmiui/external/c;

.field private bsm:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lmiui/external/c;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lmiui/external/h;->bsi:Lmiui/external/c;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 108
    iput-object p2, p0, Lmiui/external/h;->bsm:Landroid/app/Dialog;

    .line 109
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lmiui/external/h;->bsm:Landroid/app/Dialog;

    return-object v0
.end method
