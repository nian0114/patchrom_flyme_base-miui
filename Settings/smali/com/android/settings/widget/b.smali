.class Lcom/android/settings_ex/widget/b;
.super Landroid/os/Handler;
.source "ChartDataUsageView.java"


# instance fields
.field final synthetic awR:Lcom/android/settings_ex/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/ChartDataUsageView;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ex/widget/b;->awR:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/widget/ChartSweepView;

    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/widget/b;->awR:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v1, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->a(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 98
    iget-object v1, p0, Lcom/android/settings_ex/widget/b;->awR:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->a(Lcom/android/settings_ex/widget/ChartDataUsageView;)V

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/widget/b;->awR:Lcom/android/settings_ex/widget/ChartDataUsageView;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->a(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;Z)V

    .line 102
    return-void
.end method
