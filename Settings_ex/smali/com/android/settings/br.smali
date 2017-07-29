.class Lcom/android/settings_ex/br;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic ih:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1349
    iput-object p1, p0, Lcom/android/settings_ex/br;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 1352
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1353
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 1356
    iget-object v1, p0, Lcom/android/settings_ex/br;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->l(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/d/j;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1360
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/br;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->l(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/d/j;

    move-result-object v1

    iget v2, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/d/j;->m(IZ)Lcom/android/settings_ex/d/i;

    move-result-object v1

    .line 1359
    iget-object v2, p0, Lcom/android/settings_ex/br;->ih:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, v1, Lcom/android/settings_ex/d/i;->label:Ljava/lang/CharSequence;

    invoke-static {v2, v0, v1}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->a(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
