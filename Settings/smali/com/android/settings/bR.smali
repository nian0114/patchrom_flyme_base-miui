.class Lcom/android/settings_ex/bR;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic iD:Landroid/widget/NumberPicker;

.field final synthetic iG:Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;

.field final synthetic ix:Lcom/android/settings_ex/d/f;

.field final synthetic iy:Landroid/net/NetworkTemplate;

.field final synthetic iz:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings_ex/d/f;Landroid/net/NetworkTemplate;Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 2192
    iput-object p1, p0, Lcom/android/settings_ex/bR;->iG:Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;

    iput-object p2, p0, Lcom/android/settings_ex/bR;->iD:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings_ex/bR;->ix:Lcom/android/settings_ex/d/f;

    iput-object p4, p0, Lcom/android/settings_ex/bR;->iy:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/settings_ex/bR;->iz:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/android/settings_ex/bR;->iD:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 2198
    iget-object v0, p0, Lcom/android/settings_ex/bR;->iD:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    .line 2199
    iget-object v2, p0, Lcom/android/settings_ex/bR;->ix:Lcom/android/settings_ex/d/f;

    iget-object v3, p0, Lcom/android/settings_ex/bR;->iy:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/settings_ex/d/f;->a(Landroid/net/NetworkTemplate;J)V

    .line 2200
    iget-object v0, p0, Lcom/android/settings_ex/bR;->iz:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->a(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 2201
    return-void
.end method
