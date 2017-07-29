.class Lcom/android/settings_ex/bz;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic ih:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/settings_ex/bz;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/settings_ex/bz;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->b(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 790
    return-void
.end method
