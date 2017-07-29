.class Lcom/android/settings_ex/dq;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic nW:Lcom/android/settings_ex/HomeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/HomeSettings;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings_ex/dq;->nW:Lcom/android/settings_ex/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/dq;->nW:Lcom/android/settings_ex/HomeSettings;

    invoke-static {v1}, Lcom/android/settings_ex/HomeSettings;->b(Lcom/android/settings_ex/HomeSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/du;

    .line 103
    iget-boolean v1, v0, Lcom/android/settings_ex/du;->oa:Z

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/dq;->nW:Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/HomeSettings;->a(Lcom/android/settings_ex/du;)V

    .line 106
    :cond_0
    return-void
.end method
