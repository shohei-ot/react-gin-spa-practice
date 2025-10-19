import { useGetApiPing2 } from "../api/ginApi"

export const Ping2Viewer = () => {
  const {isLoading, error, data} = useGetApiPing2();

  return (
    <div style={{border: '1px solid gray', margin: '.5rem', padding: '.5rem'}}>
      <h3>Ping2 Viewer</h3>
      <div>isLoading: { isLoading ? 'true' : 'false' }</div>
      {error && <div>Error: {(error as unknown as Error).message}</div>}
      {data && <div>Data: {data.data.message}</div>}
    </div>
  );
}