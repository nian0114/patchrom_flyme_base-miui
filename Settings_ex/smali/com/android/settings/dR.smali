.class Lcom/android/settings_ex/dR;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic pL:Lcom/android/settings_ex/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MasterClear;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings_ex/dR;->pL:Lcom/android/settings_ex/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/dR;->pL:Lcom/android/settings_ex/MasterClear;

    invoke-static {v0}, Lcom/android/settings_ex/MasterClear;->b(Lcom/android/settings_ex/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 165
    return-void
.end method
