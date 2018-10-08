#ifndef ONEFLOW_CORE_KERNEL_NORMAL_MODEL_UPDATE_KERNEL_CUH_
#define ONEFLOW_CORE_KERNEL_NORMAL_MODEL_UPDATE_KERNEL_CUH_

namespace oneflow {
template<typename T>
__host__ __device__ T RegularizeDiff(T diff, T total_instance_num, T l1, T l2, T pre_model_val) {
  return diff / static_cast<int64_t>(total_instance_num)
         + l1 * ((pre_model_val >= 0) - (pre_model_val <= 0)) + l2 * pre_model_val;
}
}  // namespace oneflow

#endif  // ONEFLOW_CORE_KERNEL_NORMAL_MODEL_UPDATE_KERNEL_CUH_
