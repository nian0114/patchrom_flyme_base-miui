.class Lcom/android/settings_ex/widget/H;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Lcom/android/settings_ex/widget/I;


# instance fields
.field final synthetic azG:Lcom/android/settings_ex/widget/SwitchBar;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/SwitchBar;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings_ex/widget/H;->azG:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/widget/H;->azG:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/widget/SwitchBar;->bv(Z)V

    .line 105
    return-void
.end method
